# import os
import ast
import numpy as np
import tensorflow as tf
# from tensorflow.keras.preprocessing import image
# from tensorflow.keras.preprocessing.image import ImageDataGenerator
from sklearn.neighbors import KNeighborsClassifier
# from sklearn.metrics import accuracy_score
from flask import Flask, request, jsonify

app = Flask(__name__)

# Set the path to your custom dataset
dataset_path = '/Users/dickydarmawan/Developer/Flutter/cek_penyakit_rumput_laut/server/Gambar penyakit rumput laut/'

# Create a list of class names
class_names = ['penyakit bulu kucing', 'penyakit ice-ice', 'penyakit kerak bryzoan', 'rumput laut sehat'] 

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

# Flatten the images
x_train = x_train.reshape(x_train.shape[0], -1)

# Train k-NN Model
k_value = 5
knn_model = KNeighborsClassifier(n_neighbors=k_value)
knn_model.fit(x_train, y_train.argmax(axis=1))


import google.generativeai as genai

import PIL.Image

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
    result = result = ast.literal_eval(map_str)

    print(result)

    return result



def cek_penyakit_rumput_laut(temp_path:str) :
        # Load and preprocess the custom image
        img = tf.keras.preprocessing.image.load_img(temp_path, target_size=(28, 28))
        img_array = tf.keras.preprocessing.image.img_to_array(img)
        img_array = img_array.reshape(1, -1)
        img_array = img_array / 255.0  # Normalize pixel values

        # Make predictions on the custom image
        prediction = knn_model.predict(img_array)
        predicted_class = class_names[prediction[0]]

        # Calculate the predicted accuracy
        distances, indices = knn_model.kneighbors(img_array)

        num = 100 if np.mean(distances)*5 > 100 else np.mean(distances)*5
        
        predicted_accuracy = f'{(num):.2f}' # 00.00

        result = {'predicted_class': predicted_class, 'predicted_accuracy': float(predicted_accuracy)}
        print(result,np.mean(indices)*5,np.mean(distances)*5)

        return result

@app.route('/', methods=['POST'])
def predict():
    # Check if the post request has the file part
    if 'file' not in request.files:
        return jsonify(error='No file part')

    file = request.files['file']

    # If the user does not select a file, submit an empty part without filename
    if file.filename == '':
        return jsonify(error='No selected file')

    if file:
        # Save the uploaded image temporarily
        temp_path = 'temp.jpg'
        file.save(temp_path)

        is_rumput_laut = image_is_rumput_laut(temp_path)

        if(is_rumput_laut["prediction"]):
            result = cek_penyakit_rumput_laut(temp_path)
            return jsonify(result)
        else :
            result = {'predicted_class': "bukan rumput laut",'reason' : is_rumput_laut["reason"]}
            return jsonify(result)


if __name__ == '__main__':
    app.run(debug=True)
