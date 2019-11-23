  mov ah,02h   
  mov cx,26    
  mov dl,41h   

dongu:
  int 21h
  add dl,1h    
  loop dongu

  mov dl,0ah
  mov ah,02h   
  int 21h
      

END