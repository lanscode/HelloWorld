job('Helloworld_DSL_job'){
     description("DSL Script defined job")
     scm{
        git('https://github.com/lanscode/HelloWorld.git','main')
     }
     triggers{
        scm('* * * * *')
     }
     steps{
        maven('clean package')
     }
     publishers{
       archiveArtifacts('**/*.war')
     }
}