**Task**:

To reconstruct the sparse structure of a scene from two given images of it.

![assign-3-sample](https://user-images.githubusercontent.com/12653355/58372995-db485d80-7f43-11e9-84c6-0adfb45177df.png)



**Steps**:
- *Feature extraction and matching*:
Detect interest points in both the images, extract descriptors (using SIFT/SURF) for each of them, and match them to form two corresponding sets. Existing library implementations such as this [one](https://in.mathworks.com/help/vision/ref/matchfeatures.html#btatxig-1) can be used for this step.

- *Motion estimation*:
From the two sets of corresponding points, estimate the fundamental matrix between the two views using the normalized eight-point algorithm. Implement the algorithm within a RANSAC scheme to take care of outliers from the previous step. Remember to normalize the image points and then to 'de-normalize' the estimated fundamental matrix. Use T = [1.44/d, 0, -1.44/d * mu(0); 0, 1.44/d, -1.44/d * mu(1); 0, 0, 1] where d is the mean distance of all the image points from the origin, and mu is the mean of all the points.
Then convert the fundamental matrix into an essential matrix by using the provided calibration matrix and decompose it into relative R, Sb using any existing implementation. (Hartley &  Zisserman's method). A Matlab implementation of the decomposition is also provided.

- *Triangulation*:
Once the relative motion (orientation) has been estimated, implement linear triangulation to estimate the 3d position of each corresponding point.

**Files**:

The accompanying files can be found [here](https://github.com/iiith-rrc/summer-sessions-2019/tree/master/assignments/assignment-3). Matlab (with the computer vision toolbox) is recommended for this assignment since it is easier to get started with.

**Deliverables**:
- The estimated F-matrix, R, and t.
- A 3d plot of the reconstructed scene with the two views represented by pyramids (which you used in the previous assignments).
- Code files, written in a modular way and with meaningful comments.

Email your results to [karnikram@gmail.com](mailto:karnikram@gmail.com) and [ansariahmedjunaid@gmail.com](mailto:ansariahmedjunaid@gmail.com).

**Deadline**:

Wednesday, the 29th.
