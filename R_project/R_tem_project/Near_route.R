ntok=read.csv("R_project/R_tem_project/NittetoKarla.csv")
ktom=read.csv("R_project/R_tem_project/KarlatoManipal.csv")
mtou=read.csv("R_project/R_tem_project/Manipal to udupi.csv")
utokp=read.csv("R_project/R_tem_project/udupi_to_kapu.csv")
kptop=read.csv("R_project/R_tem_project/Kapu_to_padubidri.csv")
ptob=read.csv("R_project/R_tem_project/Padubidri_to_Belman.csv")
bton=read.csv("R_project/R_tem_project/Belman to Nitte.csv")
ntob=read.csv("R_project/R_tem_project/Nitte to Belman.csv")
btop=read.csv("R_project/R_tem_project/BelmantoPadubidri.csv")
ptokp=read.csv("R_project/R_tem_project/PadubidritoKapu.csv")
kptou=read.csv("R_project/R_tem_project/Kapu_to_udupi.csv")
utom=read.csv("R_project/R_tem_project/Kapu_to_udupi.csv")
mtok=read.csv("R_project/R_tem_project/Manipal to karkala.csv")
kton=read.csv("R_project/R_tem_project/karlatonitte24.csv")
#finding the difference in seconds from(NITTE---KARKALA)
halfdis_nk=ntok
from1=halfdis_nk[[3]][[1]]
to1=halfdis_nk[[4]][[1]]
val1=as.numeric(as.difftime(c(from1),format="%H:%M",units = "secs"))
val2=as.numeric(as.difftime(c(to1),format="%H:%M",units = "secs"))
result1=val2-val1
print(result1)
              #(NITTE---KARLALA  OVER)


#finding the difference in seconds from(KARKALA---UDUPI)
anhalfdis_ku=ktom
from1=anhalfdis_ku[[3]][[1]]
to1=anhalfdis_ku[[4]][[1]]
val1=as.numeric(as.difftime(c(from1),format="%H:%M",units = "secs"))
val2=as.numeric(as.difftime(c(to1),format="%H:%M",units = "secs"))
result2=val2-val1
print(result2)
            #(KARLALA---UDUPI  OVER)

 #total time required to move from nitte to udupi(KARKALA) in seconds
total1=result1+result2 
print(total1)
                     
# ONE WAY OF ROUTE COMPLETED

#finding the time difference in seconds from(NITTE---PADUBIDRE)
halfdis_np=ntob
from1=halfdis_np[[3]][[1]]
to1=halfdis_np[[4]][[1]]
val1=as.numeric(as.difftime(c(from1),format="%H:%M",units = "secs"))
val2=as.numeric(as.difftime(c(to1),format="%H:%M",units = "secs"))
result3=val2-val1
print(result3)
              #(NITTE---PADUBIDRE  OVER)

#finding the time difference in seconds from(PADUBIDRE----UDUPI)
halfdis_pu=ptokp
from1=halfdis_pu[[3]][[1]]
to1=halfdis_pu[[4]][[1]]
val1=as.numeric(as.difftime(c(from1),format="%H:%M",units = "secs"))
val2=as.numeric(as.difftime(c(to1),format="%H:%M",units = "secs"))
result4=val2-val1
print(result4)
             #(PADUBIDRE----UDUPI  OVER)


#total time required to move from nitte to udupi(PADUBIDRE) in seconds
total2=result3+result4
print(total2)
           # SECOND WAY OF ROUTE COMPLETED

near_route=function(t1,t2)
{
    if(t1>t2)
    {
      cat("Near distance is from Nitt to Udupi is through PADUBIDRE")
    }
  else
  {
    cat("Near distance is from Nitt to Udupi is through KARKALA")
  }
  
}
near_route(total1,total2)





