######  A small task--copy and search file using sevenbridges-r on Cavatica 

library("sevenbridges")
a <- Auth(platform = "cavatica", token = "XXXXX")
bid <- a$billing()$id
p <- a$project_new(name = "dx-test", bid, description = "Just a test")
source <- a$project(id = "yuankun/bgi-practise-source")
target <- a$project(id = "yuankun/bgi-practise-target")
t_file <- target$file(complete = TRUE)
dx_pid <- a$project(id = "dangxiao/dx-test")$id
# Method 1£º----using copyFile
for (i in 1:length(t_file)){
  source_fid<-source$file(name=t_file[[i]]$name, exact = TRUE)$id
  a$copyFile(source_fid,dx_pid)
}
# Method 2£º----using copyTo
for (i in 1:length(t_file)){
  source$file(name=t_file[[i]]$name, exact = TRUE)$copyTo(dx_pid)
}

#Add a project member
m <- a$project(dx_pid)$member_add(username = "yuankun")
a$project(dx_pi$member()

#########done

#notice £ºIt's not a good idea to embedded everything into one line  ---- write clean code
for (i in 1:length(target$file(complete = TRUE))){
  a$project(id = "yuankun/bgi-practise-target")$file(id = target$file()[[i]]$id£¬complete = TRUE)$copyTo(a$project(id="dangxiao/dx-test")$id)
}
#The above codes have a bug
#modification
for (i in 1:length(target$file(complete = TRUE))){
  a$project(id = "yuankun/bgi-practise-target")$file(id = target$file(complete = TRUE)[[i]]$id)$copyTo(a$project(id="dangxiao/dx-test")$id)
}