import ast
import os
import PIL
import tensorflow as tf
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score
import matplotlib.pyplot as plt
from PIL import Image
import google.generativeai as genai

# Set the path to your custom dataset
dir_path = os.path.dirname(os.path.realpath(__file__))

# dataset_path
dataset_path = os.path.join(dir_path, "Gambar penyakit rumput laut")

# Create a list of class names
class_names = ['penyakit bulu kucing', 'penyakit ice-ice', 'penyakit kerak bryzoan', 'rumput laut sehat'] 


# Choose an image from the validation set
# Testing
image_path = f'{dataset_path}/penyakit bulu kucing/IMG_7026.JPG'
img = Image.open(image_path).convert('RGB')
img = img.resize((28, 28))
# image_path = f'{dataset_path}/rumput laut sehat/IMG_6071.JPG'

GOOGLE_API_KEY="AIzaSyBZQ7ddMSnbvKFIiILqPr8amtPacqkhHDk"

genai.configure(api_key=GOOGLE_API_KEY)

def image_is_rumput_laut(image_path:str) : 
    img = PIL.Image.open(image_path)
    model = genai.GenerativeModel('gemini-pro-vision')

    response = model.generate_content([
        """
        apakah ini rumput laut jawabanya dalam python {'prediction': boolean,'reason' : str} 
        """,img])

    map_str = response.text.strip().replace("```python","").replace("```","")

    print(map_str)

    # Convert the JSON string into a Python dictionary
    result = ast.literal_eval(map_str)

    print(result)

    return result

is_rumput_laut = image_is_rumput_laut(image_path)

if(is_rumput_laut['prediction']):

    # Load images using ImageDataGenerator
    datagen = tf.keras.preprocessing.image.ImageDataGenerator(rescale=1./255)

    train_generator = datagen.flow_from_directory(
        dataset_path,
        target_size=(28, 28),
        batch_size=32,
        class_mode='categorical',
        classes=class_names,
        shuffle=True,
        seed=42
    )

    # Split the data into training and testing sets
    x_train, y_train = train_generator.next()
    x_train, x_val, y_train, y_val = train_test_split(x_train, y_train, test_size=0.2, random_state=42)

    # Flatten the images
    x_train = x_train.reshape(x_train.shape[0], -1)
    x_val = x_val.reshape(x_val.shape[0], -1)

    # Train k-NN Model
    k_value = 5
    knn_model = KNeighborsClassifier(n_neighbors=k_value)
    knn_model.fit(x_train, y_train.argmax(axis=1))

    # Evaluate the model on the validation set
    y_val_pred = knn_model.predict(x_val)
    val_accuracy = accuracy_score(y_val.argmax(axis=1), y_val_pred)
    print(f'Validation Accuracy: {(100*val_accuracy):.2f}%')
    # Load and preprocess the custom image

    img_array = tf.keras.preprocessing.image.img_to_array(img)
    img_array = img_array.reshape(1, -1)
    img_array = img_array / 255.0  # Normalize pixel values

    # Make predictions on the chosen image
    prediction = knn_model.predict(img_array)
    distances, indices = knn_model.kneighbors(img_array)
    print(distances,indices)

    # Display the image with class names
    plt.imshow(img)
    plt.title(f'Predicted Label: {class_names[prediction[0]]}')
    plt.show()
else:
    # Display the image with class names
    plt.imshow(img)
    plt.title(f'Predicted Label: Bukan rumput laut \n {is_rumput_laut["reason"]}')
    plt.show()
