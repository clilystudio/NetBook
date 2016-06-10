.class public Lcom/maxthon/utils/MReflect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isClass:Z

.field private final object:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maxthon/utils/MReflect;->isClass:Z

    .line 128
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maxthon/utils/MReflect;->isClass:Z

    .line 133
    return-void
.end method

.method static synthetic access$0(Lcom/maxthon/utils/MReflect;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    invoke-static {p0}, Lcom/maxthon/utils/MReflect;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 84
    if-nez p0, :cond_1

    .line 85
    const/4 p0, 0x0

    .line 104
    :cond_0
    :goto_0
    return-object p0

    .line 88
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 89
    check-cast v0, Ljava/lang/reflect/Member;

    .line 91
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_0
.end method

.method private exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/maxthon/utils/MReflect;->type()Ljava/lang/Class;

    move-result-object v0

    .line 301
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 312
    :catch_1
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 314
    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
.end method

.method private field0(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/maxthon/utils/MReflect;->type()Ljava/lang/Class;

    move-result-object v0

    .line 202
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 206
    :catch_0
    move-exception v2

    move-object v1, v0

    .line 209
    :goto_1
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 213
    :catch_1
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/maxthon/utils/MReflectException;

    invoke-direct {v0, v2}, Lcom/maxthon/utils/MReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    move-object v1, v0

    goto :goto_1
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 565
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    new-instance v1, Lcom/maxthon/utils/MReflectException;

    invoke-direct {v1, v0}, Lcom/maxthon/utils/MReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static forName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 573
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    new-instance v1, Lcom/maxthon/utils/MReflectException;

    invoke-direct {v1, v0}, Lcom/maxthon/utils/MReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/maxthon/utils/MReflect;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 458
    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 459
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_1

    .line 469
    const/4 v1, 0x1

    .line 471
    :cond_0
    return v1

    .line 460
    :cond_1
    aget-object v2, p2, v0

    const-class v3, Lcom/maxthon/utils/MReflect$NULL;

    if-eq v2, v3, :cond_2

    .line 463
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/maxthon/utils/MReflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/maxthon/utils/MReflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static on(Ljava/lang/Class;)Lcom/maxthon/utils/MReflect;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/maxthon/utils/MReflect;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/maxthon/utils/MReflect;

    invoke-direct {v0, p0}, Lcom/maxthon/utils/MReflect;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static on(Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/maxthon/utils/MReflect;

    invoke-direct {v0, p0}, Lcom/maxthon/utils/MReflect;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/maxthon/utils/MReflect;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/maxthon/utils/MReflect;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/Class;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    return-object v0
.end method

.method public static on(Ljava/lang/String;Landroid/content/Context;)Lcom/maxthon/utils/MReflect;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/maxthon/utils/MReflect;->forName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/Class;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    return-object v0
.end method

.method private static varargs on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/maxthon/utils/MReflect;"
        }
    .end annotation

    .prologue
    .line 504
    :try_start_0
    invoke-static {p0}, Lcom/maxthon/utils/MReflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    new-instance v1, Lcom/maxthon/utils/MReflectException;

    invoke-direct {v1, v0}, Lcom/maxthon/utils/MReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    .locals 2

    .prologue
    .line 513
    :try_start_0
    invoke-static {p0}, Lcom/maxthon/utils/MReflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 515
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 516
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-static {p1}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    .line 519
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    new-instance v1, Lcom/maxthon/utils/MReflectException;

    invoke-direct {v1, v0}, Lcom/maxthon/utils/MReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static property(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 443
    if-nez v0, :cond_0

    .line 444
    const-string v0, ""

    .line 448
    :goto_0
    return-object v0

    .line 445
    :cond_0
    if-ne v0, v2, :cond_1

    .line 446
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/maxthon/utils/MReflect;->type()Ljava/lang/Class;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_1

    .line 335
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_1
    if-lt v2, v5, :cond_3

    .line 341
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 343
    if-nez v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No similar method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could be found on type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/maxthon/utils/MReflect;->type()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    aget-object v1, v4, v2

    .line 328
    invoke-direct {p0, v1, p1, p2}, Lcom/maxthon/utils/MReflect;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 337
    :goto_2
    return-object v0

    .line 327
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 335
    :cond_3
    aget-object v1, v4, v2

    .line 336
    invoke-direct {p0, v1, p1, p2}, Lcom/maxthon/utils/MReflect;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v0, v1

    .line 337
    goto :goto_2

    .line 335
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method private static varargs types([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 543
    if-nez p0, :cond_0

    .line 545
    new-array v0, v0, [Ljava/lang/Class;

    .line 555
    :goto_0
    return-object v0

    .line 548
    :cond_0
    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Class;

    .line 550
    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_1

    move-object v0, v2

    .line 555
    goto :goto_0

    .line 551
    :cond_1
    aget-object v1, p0, v0

    .line 552
    if-nez v1, :cond_2

    const-class v1, Lcom/maxthon/utils/MReflect$NULL;

    :goto_2
    aput-object v1, v2, v0

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2
.end method

.method private static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 530
    instance-of v0, p0, Lcom/maxthon/utils/MReflect;

    if-eqz v0, :cond_0

    .line 531
    check-cast p0, Lcom/maxthon/utils/MReflect;

    invoke-virtual {p0}, Lcom/maxthon/utils/MReflect;->get()Ljava/lang/Object;

    move-result-object p0

    .line 534
    :cond_0
    return-object p0
.end method

.method public static wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 598
    if-nez p0, :cond_1

    .line 599
    const/4 p0, 0x0

    .line 622
    :cond_0
    :goto_0
    return-object p0

    .line 600
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    .line 602
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 603
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    .line 604
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    .line 605
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    .line 606
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    .line 607
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    .line 608
    const-class p0, Ljava/lang/Short;

    goto :goto_0

    .line 609
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    .line 610
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    .line 611
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    .line 612
    const-class p0, Ljava/lang/Double;

    goto :goto_0

    .line 613
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_8

    .line 614
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    .line 615
    :cond_8
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_9

    .line 616
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    .line 617
    :cond_9
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    .line 618
    const-class p0, Ljava/lang/Void;

    goto :goto_0
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    .line 408
    new-instance v1, Lcom/maxthon/utils/MReflect$1;

    invoke-direct {v1, p0, v0}, Lcom/maxthon/utils/MReflect$1;-><init>(Lcom/maxthon/utils/MReflect;Z)V

    .line 436
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lcom/maxthon/utils/MReflect;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/maxthon/utils/MReflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    return-object v0
.end method

.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    .locals 3

    .prologue
    .line 272
    invoke-static {p2}, Lcom/maxthon/utils/MReflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 276
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/maxthon/utils/MReflect;->exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    invoke-static {v1, v2, p2}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 284
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/maxthon/utils/MReflect;->similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 286
    :catch_1
    move-exception v0

    .line 288
    new-instance v1, Lcom/maxthon/utils/MReflectException;

    invoke-direct {v1, v0}, Lcom/maxthon/utils/MReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public create()Lcom/maxthon/utils/MReflect;
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/maxthon/utils/MReflect;->create([Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    return-object v0
.end method

.method public varargs create([Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    .locals 7

    .prologue
    .line 378
    invoke-static {p1}, Lcom/maxthon/utils/MReflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/maxthon/utils/MReflect;->type()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 383
    invoke-static {v0, p1}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 387
    :catch_0
    move-exception v0

    .line 389
    invoke-virtual {p0}, Lcom/maxthon/utils/MReflect;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v4, :cond_0

    .line 395
    new-instance v1, Lcom/maxthon/utils/MReflectException;

    invoke-direct {v1, v0}, Lcom/maxthon/utils/MReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 389
    :cond_0
    aget-object v5, v3, v1

    .line 390
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/maxthon/utils/MReflect;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 391
    invoke-static {v5, p1}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 484
    instance-of v0, p1, Lcom/maxthon/utils/MReflect;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    check-cast p1, Lcom/maxthon/utils/MReflect;

    invoke-virtual {p1}, Lcom/maxthon/utils/MReflect;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 488
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public field(Ljava/lang/String;)Lcom/maxthon/utils/MReflect;
    .locals 2

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0, p1}, Lcom/maxthon/utils/MReflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Lcom/maxthon/utils/MReflectException;

    invoke-direct {v1, v0}, Lcom/maxthon/utils/MReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fields()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/maxthon/utils/MReflect;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 227
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 228
    invoke-virtual {p0}, Lcom/maxthon/utils/MReflect;->type()Ljava/lang/Class;

    move-result-object v0

    .line 231
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_0
    if-lt v3, v6, :cond_1

    .line 240
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 242
    if-nez v0, :cond_0

    .line 244
    return-object v4

    .line 231
    :cond_1
    aget-object v7, v5, v3

    .line 232
    iget-boolean v1, p0, Lcom/maxthon/utils/MReflect;->isClass:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    xor-int/2addr v1, v8

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 236
    invoke-virtual {p0, v1}, Lcom/maxthon/utils/MReflect;->field(Ljava/lang/String;)Lcom/maxthon/utils/MReflect;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 232
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/maxthon/utils/MReflect;->field(Ljava/lang/String;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maxthon/utils/MReflect;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;
    .locals 3

    .prologue
    .line 161
    :try_start_0
    invoke-direct {p0, p1}, Lcom/maxthon/utils/MReflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    invoke-static {p2}, Lcom/maxthon/utils/MReflect;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-object p0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Lcom/maxthon/utils/MReflectException;

    invoke-direct {v1, v0}, Lcom/maxthon/utils/MReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/maxthon/utils/MReflect;->isClass:Z

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    .line 588
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
