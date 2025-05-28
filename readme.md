# 🐳 Container para UR5e e ROS Noetic
Esta imagem Docker contém uma configuração mínima para utilizar o Universal Robots ROS Driver e as ferramentas de calibração UR no ROS Noetic.

## Build da imagem Docker

```bash
docker build -t ur5e_noetic .
```

## 🔧 Configuração do Robô

Se o braço robótico ainda não estiver configurado, siga a [documentação oficial.](https://github.com/UniversalRobots/Universal_Robots_ROS_Driver?tab=readme-ov-file#setting-up-a-ur-robot-for-ur_robot_driver)


## 🚀 Inicialização do Driver do Robô

Para iniciar o driver do robô utilizando um dos modelos UR suportados:

```bash
docker run --network=host --ipc=host ur5e_noetic roslaunch ur_robot_driver ur5e_bringup.launch robot_ip:=192.168.56.101
```

## 🔧 Calibração do Robô

Se você ainda não calibrou seu robô, execute a ferramenta de correção de calibração:

```bash
docker run --network=host --ipc=host ur5e_noetic
  roslaunch ur_calibration calibration_correction.launch robot_ip:=<robot_ip> target_filename:="${HOME}/my_robot_calibration.yaml"
```

Substitua `<robot_ip>` pelo endereço IP do seu robô UR físico.


## ✅ Usando uma Calibração Salva

Se você já salvou sua calibração anteriormente, pode fornecê-la diretamente:

```bash
docker run --network=host --ipc=host ur5e_noetic
  roslaunch ur_robot_driver ure_bringup.launch robot_ip:=192.168.56.101 kinematics_config:=$(rospack find ur_calibration)/etc/ur10_example_calibration.yaml
```

Substitua o caminho do arquivo de calibração se estiver usando um nome ou local personalizados.

