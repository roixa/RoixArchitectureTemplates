# RoixArchitectureTemplates

### Large architecture templates for android

This is a clean mvvm architecture with DI, included base list and toolbar screens logic, configured themes, styles and values etc. 
After every template use, generated code is able to compile. This allows to work with architecture and DI, as a black boxes.

### Templates
```
1. Architecture: 
Create base classes and the first screen and the repository, and configure resourses, manifest, .gradle files.

2. Screen: 
Add view (activity or fragment), vievmodel, interactor. And resolving in a DI tree.  
There is able to provide repository in interactor inside the template. Screen can be list, toolbar, base etc.

3. Repository: 
Add repository class-interface pair with resolved DI.

```

### Usage
```
1. Download or clone this repository 

2. Copy (RoixArchitectureApplication , RoixMVVMRepository , RoixMVVMScreen) folders
to folder ${AndroidStudioDir}/plugins/android/lib/templates/activities

3. Restart Android Studio

3. Choose File->New->Roix MVVM Architecture->template

4. Use the template

```

![Image of Yaktocat](https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=atchitecture.html#R7Vpbb9owFP41SNvDptjO9bGl7Tapk6p12rpHNzHBa4iRMQX262cTh9xDVCDpRvtS%2B%2Fj4ku%2F7fHJOxAiNZ%2BtPHM%2BnX1lAohE0gvUIXY0gBIYJ5T9l2SQW0wWJIeQ00E6Z4Z7%2BIelMbV3SgCwKjoKxSNB50eizOCa%2BKNgw52xVdJuwqLjrHIekYrj3cVS1%2FqSBmCZWFzqZ%2FTOh4TTdGdheMjLDqbN%2BksUUB2yVM6HrERpzxkTSmq3HJFLgpbgk824aRncH4yQWXSaYEwv4vmESwzQcw0AfIEqWeMbRUj%2FtNzJnCyoY3%2BixhdikSHC2jAOiFjNG6HI1pYLcz7GvRleSe2mbilkke0A2I%2FxIoju1FmWxtPnykITLgWfCBZXw3pYcBFMr4IiGte4XeuCRCcFmcmBCo2jMIsa3h0MT1ye%2BL%2B0LwdkTyY08upZpqRPrh5ULknUjhGBHjFQ0YTMi%2BEa66AmWo7nUYoae7q8yaYCU72lOFra2Ya3GcLd0RphsaM668gda%2BINv%2FO3nDzhD8peGuFr%2BwBt%2F%2B%2FkzB6XPrNB373NC4gOv3kKO0Dj8rgi5QgNw6Xk3N553HMbMUsAEVcaQVcMYACehrIGxAy9b%2F4xtN7jE%2FlO4PWj%2BIm7%2FeiXVQkNyCiuc%2FqBkJS3vsC%2FoMxVy%2BfGE43Cmng7akUgYi2U7VO33qVFunbe3aALs18QRYLaLMLsdg51lnQDlaqxTKOt0f2CcoLEXKKcvnOwKGiSQ9YTuMi6mLGQxjq4z62Ux1uSwIWsqHnLtX8rlo6V6sTzog56x7WRjv4kQG11I4aVg0pTte8u2QSpDXh2vHXf5NGzJfdJ%2B%2FwTmIRFt6qnyx0mE5RUt7n9UOpyKbL%2Bo0Cojg4yLQ%2BsW7det3Zdu3bPTrdlBt85QugXVt1pWGgwuXMsrpeFeRbhujXDTT0HHRar6oeIkyu2qzjaFH0m5TgflJgI6QLp66h2jKmvaMd%2BQk6QrJGfSkzJWLzjHm5zbXDksmrcxSxkmMNz8cnv9HaOkqeQAmcJ2iLxQdNbZhUtgd1GdO1jAtCsB8z8tAyByKtG2vzoAOOenfLeL8r3BlO%2FWKv91lmZ14u2tNgNeBalXXA3UQdVbOQD%2FqfwTOAMmoLD6aeQVQwW9IaE6btrU6yuiNfrD02TbyK5Pg3dLJO%2Btw9Ntx6rdpzHdLvmnUf5k%2BTY8v89q6cuqXXeHflh7mVzsEv263yiXkj%2BCp5bLcZPUBlE4A6iiS%2Bk%2FkCgOLNkRAoeIQnazX9Ik7tnvkdD1Xw%3D%3D)

### Tools / Libs Utilized
- Jetbrains Kotlin : https://kotlinlang.org/
- Android Architecture Components : https://developer.android.com/topic/libraries/architecture/index.html
- Databinding : https://developer.android.com/topic/libraries/data-binding/index.html
- Toothpick Dependency Injection : https://github.com/stephanenicolas/toothpick
- Dagger2 (in dagger_version branch) : https://github.com/google/dagger
- RxJava 2 / RxAndroid : https://github.com/ReactiveX/RxJava
- Retrofit 2 : http://square.github.io/retrofit/
- Picasso : http://square.github.io/picasso/
- Permission dispatcher : https://github.com/permissions-dispatcher/PermissionsDispatcher
- Constraint Laoyut, Support Library etc
