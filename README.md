# Cambodia Khmer Semantic Segmentation

This repository contains the code for  the paper "Beyond the Greater Angkor Region: Automatic large-scale mapping of Khmer Empire reservoirs in satellite imagery using Deep Learning" by Jürgen Landauer, Sarah Klassen, Adam P. Wijker, Josine van der Kroon, Alexis Jaszkowski, Wouter Baernd Verschoof-van der Vaart.

We recommend to use Docker (https://www.docker.com/) to run this repository to take all dependencies into consideration. A Dockerfile is provided.

After cloning the repository please fill the sub-directories /Data/TrainingData and /Data/TestData. 
Note that the site locations used for training and testing may be available for research purposes, with appropriate request to the authors. The data are not publicly available due to ethics of archaeological site protection. 

The underlying satellite imagery is available via the Microsoft Bing Maps API (see https://learn.microsoft.com/en-us/bingmaps/rest-services/). The Microsoft Bing Maps Platform APIs’ terms of use are available at https://www. microsoft com/en-us/maps/product/print-rights. 

To train the Semantic Segmentation model, run the Jupyter Notebook "01 CambodiaKhmerSegmentationTraining.ipynb" in the Notebooks directory from your Docker. This will create a new directory "./models" containing the generated AI model "m_deeplabv3+_C105c_reservoir0.pkl"

To test the Semantic Segmentation model, run the Jupyter Notebook "02 CambodiaKhmerSegmentationPrediction.ipynb" in the Notebooks directory from your Docker. This will create prediction masks for the regions configured in this notebook.

For questions please feel free to contact the authors by using the correspondence address given in the paper.
