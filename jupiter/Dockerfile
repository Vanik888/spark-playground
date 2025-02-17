FROM python:3.10-slim
LABEL authors="vanik_kars"

# Set working directory
WORKDIR /opt/spark/

# Install Java (for PySpark)
RUN apt-get update && apt-get install -y openjdk-17-jdk && apt-get clean

COPY requirements/requirements.txt .

# Install required packages
RUN pip install -r requirements.txt

# Set JAVA_HOME environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-arm64
ENV PATH=$JAVA_HOME/bin:$PATH

# Run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
