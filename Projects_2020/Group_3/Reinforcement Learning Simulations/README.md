in order to open the simulations you need to do the following steps:
	
	A. install stable baselines.
	B. install gym.
	C. gym file replacement:
		1.gym\envs: replace __init__.py with file with __init__envs.py (after replacement - change the name for __init__.py)
		2.gym\envs\mujoco: replace __init__.py with file with __init__mujoco.py (after replacement - change the name for __init__.py)
		3. copy ProjectEnv.py, ProjectEnvIMP.py , ProjectEnvXYZ.py to gym\envs\mujoco. ProjectEnvImp is the current version of the enviroment.
		the other 2 files are previous versions that we didnt show in our presentation al all.
		4.copy the xml file and the mesh directory to: gym\envs\mujoco\assets.
		2dof__force_sensing_env_mechanismHorizontal3.xml is the current xml version of the project (see that we have different versions with 			different springs behaviors, you can try them all).
	D.open new python project with the files as follows:
		1.main.py - main file to begin learning process
		2.run_main.py - file that runs simulations with trained agents.
	E. for each learning style replace all the relevant files with the correspondent files from the learning directory (main difference is in 		   ProjectEnvImp.py)
	F. In order to adjuct learning hyperparameters such as learning rates, exploration , etc please do to: stable_baselines\ddpg\ddpg.py
	G. use matlab 2020a files to analyze the simulation:
		a.Path_reader.m : creates graphs that describe the motion of the manipulator.
		b.Data_reader : analyze learning process.
feel free to contact us by email for any question or misunderstanding.
