class ArchivosController < ApplicationController
  ruta="public/imagenes/"

  
  def subir_archivos
   @formato_erroneo = false;
   if request.post?
      #Archivo subido por el usuario.
      archivo = params[:archivo];
      #Nombre original del archivo.
      nombre = archivo.original_filename;
      #Directorio donde se va a guardar.
      directorio = "public/imagenes/";
      #Extensión del archivo.
      extension = nombre.slice(nombre.rindex("."), nombre.length).downcase;
      #Verifica que el archivo tenga una extensión correcta.
      if extension == ".jpg" or extension == ".png" or extension == ".jpeg"
         #Ruta del archivo.
         path = File.join(directorio, nombre);
         #Crear en el archivo en el directorio. Guardamos el resultado en una variable, será true si el archivo se ha guardado correctamente.
         resultado = File.open(path, "wb") { |f| f.write(archivo.read) };
         #Verifica si el archivo se subió correctamente.
         if resultado
            subir_archivo = "ok";
         else
            subir_archivo = "error";
         end
         #Redirige al controlador "archivos", a la acción "lista_archivos" y con la variable de tipo GET "subir_archivos" con el valor "ok" si se subió el archivo y "error" si no se pudo.
         redirect_to "/";
      else
         @formato_erroneo = true;
      end
    end
 end
 
  
end
