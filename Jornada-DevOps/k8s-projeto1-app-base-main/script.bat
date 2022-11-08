echo "Criando as imagens..."
docker build -t projeto-backend:1.0 backend/.
docker build -t projeto-backend:1.0 database/.

echo "Realizando push das imagens..."
docker build -t projeto-backend:1.0 
docker build -t projeto- database:1.0