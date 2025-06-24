# PINNs (Physics-informed Neural Networks)

![image](https://github.com/user-attachments/assets/00f94358-6ffd-4a6d-b45d-d151d3013080)

------------------------

This is a simple implementation of the Physics-informed Neural Networks (PINNs), using ***PyTorch***, that has been extended with a robustified dynamically quantization process.

_**By: Isean Bhanot, Aditya Rao, Jishan Kharbanda**_

------------------------

## Problem

PINNs, like other Deep Neural Network (DNN) based models, are typically [quantized](https://huggingface.co/docs/optimum/en/concept_guides/quantization) to reduce its memory footprint and allow models to run on resource (compute, memory, bandwidth, power, etc.) constrained devices. 

However <ins> due to the nature of the quantization process, model performance degrades </ins> (see figure below). This reduces a PINN model's accuracy and usability in real-world scenarios, which may further compound the model's performance degradation.

## Our Solution

Below shows how small, Gaussian noise injected into the training process of a PINN **decreased** performance degradation in the dynamic quantization process. Through this simple robustification technique of the dynamic quantization process, we can benefit from the lack of a calibration set and avoid post-quantization work done in non-dynamic quantization processes required to decrease the performance degradation of quantization processes. 

Put simply, <ins> we unlocked broader use of a powerful quantization technique by minimizing its performance drop in PINNs </ins>. Therefore, our work helps to enable Edge Computing and [Edge AI](https://www.hpe.com/us/en/what-is/edge-ai.html) applications for these data efficient, physics-grounded, and robust Neural Networks: PINNs. 

As a bonus we also open sourced our code for you to try it out for your self. :)

![image](https://github.com/user-attachments/assets/5c754812-fe50-4d86-a6de-603637ea6a14)

![image](https://github.com/user-attachments/assets/47f719fd-0a79-419f-9b87-620a4ebc2518)

**Note we narrowed our work on a PINN based on [Burgers' Equation](https://en.wikipedia.org/wiki/Burgers%27_equation)--which has applications in traffic flow, fluid mechanics, nonlinear acoustics, and gas dynamics.

**We focus on the dynamic quantization process due to its straightforward integration and widespread adoption potential into DNN/PINN deployments. Dynamic quantization reduces model size and speeds up inference by converting weights to int8 ahead of time and quantizing activations dynamically during runtime. It does not require post-training fine-tuning or access to a dataset, and is primarily used for CPU inference rather than GPU.

## Attribute

**Original Work**: *Maziar Raissi, Paris Perdikaris, and George Em Karniadakis*

**Github Repo** : https://github.com/maziarraissi/PINNs

**Link:** https://github.com/maziarraissi/PINNs/tree/master/appendix/continuous_time_identification%20(Burgers)

@article{raissi2017physicsI,
  title={Physics Informed Deep Learning (Part I): Data-driven Solutions of Nonlinear Partial Differential Equations},
  author={Raissi, Maziar and Perdikaris, Paris and Karniadakis, George Em},
  journal={arXiv preprint arXiv:1711.10561},
  year={2017}
}

@article{raissi2017physicsII,
  title={Physics Informed Deep Learning (Part II): Data-driven Discovery of Nonlinear Partial Differential Equations},
  author={Raissi, Maziar and Perdikaris, Paris and Karniadakis, George Em},
  journal={arXiv preprint arXiv:1711.10566},
  year={2017}
}

-------------------------------------------

## Dependencies

Major Dependencies:

 - ***Tensorflow (for Tensorflow Implementation)***: ```pip install --upgrade tensorflow```
 - ***PyTorch (for PyTorch Implementation)***: ```pip install --upgrade torch``
 - ***Jupyter Notebook/Lab***: ```pip install jupyterlab``` (JupyterLab) or ```pip install notebook```

Peripheral Dependencies:
 
 - ***numpy***: ```pip install numpy```
 - ***seaborn***: ```pip install seaborn```
 - ***matplotlib***: ```pip install matplotlib```
 - ***pyDOE (for Tensorflow Implementation)***: ```pip install pyDOE```
