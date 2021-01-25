# Configure the Helm client to use the stable repository
helm repo add bitnami https://charts.bitnami.com/bitnami

# list all charts from the stable channel
helm search repo bitnami

# output
NAME                           CHART VERSION   APP VERSION   DESCRIPTION
bitnami/bitnami-common                  0.0.8           0.0.8                   Chart with custom templates used in Bitnami cha...
bitnami/airflow                         6.1.8           1.10.10                 Apache Airflow is a platform to programmaticall...
bitnami/apache                          7.3.15          2.4.43                  Chart for Apache HTTP Server
bitnami/cassandra                       5.3.3           3.11.6                  Apache Cassandra is a free and open-source dist...
...

# Install a Helm chart
