# Spring Boot 3 AOT

Hi, Spring fans! In this installment we briefly look at some of the new support for building native applications in Spring Framework 6 and Spring Boot 3

<details><summary>Development</summary>
<p>

#### Setup project
In macOS, the JDK installation path is: 

```
/Library/Java/JavaVirtualMachines/<graalvm>/Contents/Home.
/Users/k/Library/Java/JavaVirtualMachines/<graalvm>/Contents/Home.

#Select Java 17 based distribution for macOS, and download.
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.2.0/graalvm-ce-java17-darwin-amd64-22.2.0.tar.gz

#Unzip the archive.
tar -xzf graalvm-ce-java<version>-darwin-amd64-<version>.tar.gz
tar -xzf graalvm-ce-java17-darwin-amd64-22.2.0.tar.gz 

#Move folder to /Library/Java/JavaVirtualMachines directory. Since this is a system directory, sudo is required:
sudo mv graalvm-ce-java<version>-<version> /Library/Java/JavaVirtualMachines
mv graalvm-ce-java17-22.2.0 /Users/k/Library/Java/JavaVirtualMachines 

#Verify installed JDKs, run 
/usr/libexec/java_home -V.

#Configure the runtime environment:
#Point the PATH environment variable to the GraalVM bin directory:
export PATH=/Library/Java/JavaVirtualMachines/<graalvm>/Contents/Home/bin:$PATH

export PATH=/Users/k/Library/Java/JavaVirtualMachines/graalvm-ce-java17-22.2.0/Contents/bin:$PATH
export JAVA_HOME=/Users/k/Library/Java/JavaVirtualMachines/graalvm-ce-java17-22.2.0/Contents/Home

#Specify GraalVM as the default JRE or JDK installation in your Java IDE
#Edit $HOME/.mavenrc
sublime $HOME/.mavenrc
export JAVA_HOME=/Users/k/Library/Java/JavaVirtualMachines/graalvm-ce-java17-22.2.0/Contents/Home
source $HOME/.mavenrc

```
#### Build project
* You can build the normal jar file
```
sh ./aot.sh
```
* You can compile native in host/dev system and execute as a normal binary
```
sh ./build-native.sh
```

* You can compile native and build docker image)
```
sh ./build-native-docker.sh
```
</p>
</details>