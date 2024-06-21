import tensorflow as tf
import os
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import confusion_matrix
from tabulate import tabulate, tabulate_setup

# Set the path to your custom dataset
dir_path = os.path.dirname(os.path.realpath(__file__))

# dataset_path
dataset_path = os.path.join(dir_path, "Gambar penyakit rumput laut")

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

# Generate predictions for the training set
y_pred = knn_model.predict(x_train)
y_true = y_train.argmax(axis=1)

# Calculate the confusion matrix
conf_matrix = confusion_matrix(y_true, y_pred)

# Print the confusion matrix with added differences
print("Confusion Matrix:")
header = [""] + class_names
table = []
for i, row in enumerate(conf_matrix):
    new_row = [class_names[i]] + (row + tabulate_setup[i]).tolist()
    table.append(new_row)
    
print(tabulate(table, headers=header, tablefmt="grid"))