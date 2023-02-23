# ==================================================================
# module list
# ------------------------------------------------------------------
# python        3.6    (apt)
# tensorflow    1.12.1 (pip)
# keras         2.2.4  (pip)
# ==================================================================

FROM yulunzhang/tf1.12-pt0.4.0:v02
RUN APT_INSTALL="apt-get install -y --no-install-recommends" && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive $APT_INSTALL \
        git \
        && \
    DEBIAN_FRONTEND=noninteractive pip3 install\
        keras==2.2.4 \
        tensorflow-hub==0.4.0 \
        imageio==2.5.0 \
        scikit-image==0.14.4 \
        pandas==0.24.2 \
        && \
    pip3 install --no-dependencies foolbox==1.8.0
