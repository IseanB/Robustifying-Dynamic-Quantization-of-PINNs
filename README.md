# PINNs (Physics-informed Neural Networks)

------------------------


This is a simple implementation of the Physics-informed Neural Networks (PINNs), using PyTorch, that has been extended with a robustified dynamically quantization process.

-------------------------------------------

## Results

Below shows a link we discovered between small, Gaussian noise injection into PINNs and decreased performance degredation in the dynamic quantization process. By finding this simple robustificaiton process of the dynamic quantization process, we can benefit from the lack of a calibration set and typically post-quantization work done in non-dyanmic quantization processes required to decrease the performance degredation of quantization processes. 

![image](https://github.com/user-attachments/assets/5c754812-fe50-4d86-a6de-603637ea6a14)

![image](https://github.com/user-attachments/assets/47f719fd-0a79-419f-9b87-620a4ebc2518)


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
