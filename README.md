# summer-sessions-2019

## Note: Announcements will be made through the repo's issues page, so please subscribe to the repo (by clicking the 'watch' button) to receive notifications.

A series of lectures and hands-on tutorials organized between the 6th of May 2019 and 20th of June 2019 to familiarize new lab entrants with the fundaments of different areas of robotics research that the lab conducts.

An important aspect of this session will be getting familiar with various robots and sensors present in the lab. This knowledge/skill will be critical as some of the assignments will involve using these systems to collect data and/or execute the algorithms.

## Venue and Timings:
* Venue : Nilgiri 119(Saranga Hall)
* Timings : 15:00 Hrs to 17:00 Hrs 


## Tentative topics:

**Lab Robots & other Hardwares:** ROS (Robot Operating System), Cameras(Monocular, Stereo, RGBD), Lidars, IMUs, Flight controllers, Husky Robot, P3DX Robot, Bebeop Drone, GPS, etc.

**Fundamentals of Linear Algebra, Calculus and Optimization:** Vectors, Matrices, Vector and Matrix operations, Important matrices, Matrix decompositions, Gradient, Hessian, Linear and non-linear least squares, Unconstrained optimization methods, Lagrange multipliers.

**Rigid Body Transformations:** Rotation matrices, Homogeneous Transformation matrices, Rigid Body transformation, Composition of transformation by current-axis and fixed-axis conventions.

**Geometric methods in Computer Vision:** Projective geometry, Camera modelling, Camera Calibration, Two-view geometry, Triangulation, Resection, SfM, Visual odometry.


**Deep learning for Computer Vision & Tensor Flow:**

**Motion Planning:** Robot modelling, Motion Planning overview, Sampling based planning, Variational methods for planning.

**Reinforcement Learning:** Markov Processes, Planning using Dynamic Programming, Value Iteration and Policy Iteration, Model Free RL(TD learning, SARSA, Importance Sampling), table Q-learning,  Value Function Approximation(Incremental and Batch), Deep Q Networks(DQN), Policy Gradients(REINFORCE, Actor-Critic Methods). (Additionally we can also cover Deep RL(DQN, Double DQN, Asynchronous DQN, Bayesian RL, TRPO, PPO, Inverse RL etc.)  if we have time).

## Schedule
>All the course materials(slides/references) will be updated in this section after every class.
>For any queries and discussions refer to the [issues](https://github.com/iiith-rrc/summer-sessions-2019/issues) page.

|  Date  |       Topic       |  Presenter     |        Material       |     Additional Reading     |
|:------:|:-----------------:|:-----------:|:---------------------:|:--------------------------:|
|6-5-19  | Intro to lab and sessions, Maths review| Mithun | [Class Slide](https://drive.google.com/file/d/1T3O_9q3hSKVw88LsjtCXCmZFFpd-cs8Z/view)| [Matrix_Differentiation_Reference](https://atmos.washington.edu/~dennis/MatrixCalculus.pdf)                        |
|7-5-19  | Maths review contd.| Mithun    |          [Class Slide](https://drive.google.com/file/d/1QfuChvRevKoIc9g_OQqpIUxI-9TPlcx_/view)     | [Reference Materials](https://github.com/iiith-rrc/summer-sessions-2019/issues/2)                       |
|9-5-19  | Rigid Body Transformations and Image Formation| Gourav    |         [Class Slide Image Formation](https://drive.google.com/open?id=1Rn7wZ-S5Dr-DfSaL6Vze6a1aAN9idWqd)     | at end of slide                        |
|11-5-19  | Rigid Body Transformations contd.| Gourav     |          [Class Slide](https://drive.google.com/open?id=1iIF4Qt043ALe-Wo7pWnKMGqminWrqdjg)     | at end of slide                        |
|13-5-19  | Camera Calibration| Junaid     |          [slide](https://drive.google.com/file/d/0B09edifas--WT2dvbF9xVkpZRXRQT010dGlCMm5iLWl1blpZ/view)    |  [Camera Intrinsics and Extrinsics](https://drive.google.com/file/d/17vTRpqAx3cDJLlrYZ0kXZ6fQYcmyhKIR/view)                       |
|15-5-19  | Multiple-view Geometry 1 - Overview, Intro to visual odometry, Feature detection and matching, Motion estimation | Karnik | [Class slides](/lecture-slides/mvg-1.pdf) <br> [SIFT, F-matrix slides](/reference-material/) | [Original SIFT paper](https://link.springer.com/article/10.1023/B:VISI.0000029664.99615.94) <br> MVG Ch. 9 & 10|
|17-5-19  | Multiple-view Geometry 2 - Epipolar geometry, RANSAC | Karnik | [Class slides](/lecture-slides/mvg-2.pdf) | MVG Ch. 9 & 11 <br> MVG Sec. 4.6 <br> [Moving object detection paper](https://ieeexplore.ieee.org/document/5354227)|
|20-5-19  | Stereo | Mahtab | TBD | TBD|
|22-5-19  | Multiple-view Geometry 3 - Triangulation, Resection, Bundle Adjustment | Karnik | [Class slides](/lecture-slides/mvg-3.pdf) | MVG Ch. 12 <br> [E-PnP](https://cvlab.epfl.ch/software/multi-view-stereo/epnp/) <br> [Bundle adjustment](https://hal.inria.fr/inria-00548290)|
|23-5-19  | DL 1 | Sarthak | Basic review of ML and forward propagation | TBD |
|24-5-19  | DL 2 | Shashank | Back Propagation, CNN & Optimization Methods | CS231n lecture slides |
|27-5-19  | DL 3 | Sarthak | PyTorch Introduction and Coding | TBD |
|28-5-19  | DL 4 | Shashank | CNN Architectures, RNNs/LSTMS, object detection| CS231n lecture slides |
|29-5-19  | DL 4 | Shashank | Coding LSTMs and time series prediction | TBD |
|1-6-19   | Motion Planning | Mithun | Motion Planning overivew and Graph search methods | [Slides](/lecture-slides/mp-1.pdf), [Slides](/lecture-slides/mp-2.pdf) |
|3-6-19   | Motion Planning | Mithun | Sampling based methods and Local Planning | [Slides](/lecture-slides/mp-3/) |
|8-6-19  | Trajectory Generation/ ROS | Mithun, Gourav |  [ROS Tutorial](http://wiki.ros.org/ROS/Tutorials) | [ETH ROS Course](http://www.rsl.ethz.ch/education-students/lectures/ros.html) |
|9-6-19  | ROS |  Gourav | [ROS Tutorial](http://wiki.ros.org/ROS/Tutorials)  | [ETH ROS Course](http://www.rsl.ethz.ch/education-students/lectures/ros.html) |
|19-6-19  | RL Basics | Kaustubh | [slides](http://www0.cs.ucl.ac.uk/staff/d.silver/web/Teaching.html) | [DeepMind Lectures](https://www.youtube.com/watch?v=2pWv7GOvuf0&list=PLqYmG7hTraZDM-OYHWgPebj2MfCFzFObQ) |

>Tentative Schedule of remaining topics to be covered

**Motion Planning(8 - 15 June):**

**Reinforcement Learning(16 June Onwards):**

**Lab Robots & other Hardwares(On Weekends):**

## Assignments

| Assignment No. | Release Date |       Topic      |       files        | Deadline|
|:--------------:|:------------:|:----------------:|:------------------:|:-------:|
|1 | 10-5-19 | Linear Algebra, Optimization, Transformations | [Problem statement](https://drive.google.com/file/d/1Vu6af6LKr7D_N-EFToYC0MuNv9F8MXC-/view) | 14-5-19 |
|2 | 15-5-19 | DLT Calibration | [Problem statement](assignments/assignment-2.pdf) | 19-5-19 |
|3 | 25-5-19 | Two-view reconstruction | [Problem statement](assignments/assignment-3/instructions.md) | 29-5-19 |
|4 | 27-5-19 | Deep Learning_Assign1 | [Problem statement](assignments/deeplearning_assign1) | 3-6-19 |


## References
>This section will point out to research papers, text books and other resources for going deep into different topics

**Lab Robots & other Hardwares(On Weekends):**

**Linear Algebra/Vector Calculus/Optimization():**

* Refer [Issue #1](https://github.com/iiith-rrc/summer-sessions-2019/issues/1) and [Issue #2](https://github.com/iiith-rrc/summer-sessions-2019/issues/2)

**Rigid Body Transformations/Image Formation/ Camera Geometry():**

**Multiview Geometry:**


* Photogrammetry II - A course by Prof. Cyrill Stachniss
* Multiple View Geometry in Computer Vision - A book by Richard Hartley and Andrew Zisserman. Colloquially referred to as the bible.
* An Invitation to 3D Vision by Yi Ma, Stefano Soatto, Jana Kosecka, and Shankar S. Sastry - Considered more beginner-friendly than the bible.
* Photogrammetric Computer Vision by Wolfgang Förstner and Bernhard P. Wrobel - The book Cyril Stachniss follows in his lecture series.

**Deep Learning & Tensor Flow:**

**Motion Planning:**

* Refer [Issue #13](https://github.com/iiith-rrc/summer-sessions-2019/issues/13)

**Reinforcement Learning:**

* Book: Reinforcement Learning by Sutton and Barto [pdf](http://incompleteideas.net/book/RLbook2018trimmed.pdf)
* Reinforcement Learning lectures by David Silver [link](https://www.youtube.com/watch?v=2pWv7GOvuf0&list=PLqYmG7hTraZDM-OYHWgPebj2MfCFzFObQ)


## Contacts:
** For any doubts and querries regarding this session you can contact any one of the coordinators as mentioned below:**
* Maths(Linear Algebra, Optimization, Probability & Statistics)
>Mithun Nallana <mithun.babu@research.iiit.ac.in><br />
* Rigid Body Transformations, Image Formation, Camera Geometry
>Gourav Kumar <gkumar.4548@gmail.com><br />
* Projective Geometry, Multiview Geometry
>Karnik Ram <karnikram@gmail.com><br />
>Junaid Ahmad <ansariahmedjunaid@gmail.com><br />
* Deep Learning
>Sarthak Sharma <sarthak.alexrider@gmail.com><br />
>S Shashank <shashank.s@research.iiit.ac.in><br />
* Reinforcement Learning
>kaustubh mani <kaustubh3095@gmail.com><br />
* Motion Planning and Trajectory Optimization
>Mithun Nallana <mithun.babu@research.iiit.ac.in><br />
* Hands-on sessions with Robots and sensors
>Sriram N N <nnsriram97@gmail.com><br />
>Gourav Kumar <gkumar.4548@gmail.com><br />
