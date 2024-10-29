# !!! Attention.  No good with mini config 2 cpus 2 gb memory !!!
# used 7 cpus 10gb memory
#  sur XPS-13 i7 8gen, ca rammme a mort 80% cpu a l'instllc!!!

helm repo add apache-airflow https://airflow.apache.org
helm repo update apache-airflow
helm upgrade --install airflow apache-airflow/airflow \
  --namespace airflow \
  --create-namespace \
  --set-string "env[0].name=AIRFLOW__CORE__LOAD_EXAMPLES" \
  --set-string "env[0].value=True" \
  --timeout 20m0s --debug
