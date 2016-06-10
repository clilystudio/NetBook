.class public final Lorg/apache/commons/lang3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Lorg/apache/commons/lang3/JavaVersion;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "awt.toolkit"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    const-string v0, "file.encoding"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    const-string v0, "file.separator"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    const-string v0, "java.awt.fonts"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    const-string v0, "java.awt.graphicsenv"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    const-string v0, "java.awt.headless"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    const-string v0, "java.awt.printerjob"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    const-string v0, "java.class.path"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    const-string v0, "java.class.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    const-string v0, "java.compiler"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    const-string v0, "java.endorsed.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    const-string v0, "java.home"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    const-string v0, "java.library.path"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    const-string v0, "java.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    const-string v0, "java.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    const-string v0, "java.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    sput-object v0, Lorg/apache/commons/lang3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/c;->b:Lorg/apache/commons/lang3/JavaVersion;

    .line 461
    const-string v0, "java.util.prefs.PreferencesFactory"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    const-string v0, "java.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    const-string v0, "java.vendor.url"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    const-string v0, "java.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    const-string v0, "java.vm.info"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 553
    const-string v0, "java.vm.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 571
    const-string v0, "java.vm.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 589
    const-string v0, "java.vm.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 607
    const-string v0, "java.vm.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 625
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 643
    const-string v0, "java.vm.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 661
    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 679
    const-string v0, "os.arch"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 697
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/c;->c:Ljava/lang/String;

    .line 715
    const-string v0, "os.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/c;->d:Ljava/lang/String;

    .line 733
    const-string v0, "path.separator"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 753
    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "user.region"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 772
    :goto_0
    const-string v0, "user.dir"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 790
    const-string v0, "user.home"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 809
    const-string v0, "user.language"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 827
    const-string v0, "user.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 845
    const-string v0, "user.timezone"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 860
    const-string v0, "1.1"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;)Z

    .line 870
    const-string v0, "1.2"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;)Z

    .line 880
    const-string v0, "1.3"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;)Z

    .line 890
    const-string v0, "1.4"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;)Z

    .line 900
    const-string v0, "1.5"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;)Z

    .line 910
    const-string v0, "1.6"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;)Z

    .line 922
    const-string v0, "1.7"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;)Z

    .line 942
    const-string v0, "AIX"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/c;->e:Z

    .line 954
    const-string v0, "HP-UX"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/c;->f:Z

    .line 966
    const-string v0, "Irix"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/c;->g:Z

    .line 978
    const-string v0, "Linux"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LINUX"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/apache/commons/lang3/c;->h:Z

    .line 990
    const-string v0, "Mac"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    .line 1002
    const-string v0, "Mac OS X"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/c;->i:Z

    .line 1014
    const-string v0, "FreeBSD"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/c;->j:Z

    .line 1026
    const-string v0, "OpenBSD"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/c;->k:Z

    .line 1038
    const-string v0, "NetBSD"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/c;->l:Z

    .line 1050
    const-string v0, "OS/2"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    .line 1062
    const-string v0, "Solaris"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/c;->m:Z

    .line 1074
    const-string v0, "SunOS"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/c;->n:Z

    .line 1099
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    .line 1111
    const-string v0, "Windows"

    const-string v1, "5.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1123
    const-string v0, "Windows"

    const-string v1, "5.2"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1135
    const-string v0, "Windows Server 2008"

    const-string v1, "6.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1147
    const-string v0, "Windows 9"

    const-string v1, "4.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1160
    const-string v0, "Windows 9"

    const-string v1, "4.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1173
    const-string v0, "Windows"

    const-string v1, "4.9"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1186
    const-string v0, "Windows NT"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->b(Ljava/lang/String;)Z

    .line 1199
    const-string v0, "Windows"

    const-string v1, "5.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1212
    const-string v0, "Windows"

    const-string v1, "6.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1224
    const-string v0, "Windows"

    const-string v1, "6.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 753
    :cond_1
    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/commons/lang3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 978
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1265
    sget-object v0, Lorg/apache/commons/lang3/c;->a:Ljava/lang/String;

    .line 2387
    if-nez v0, :cond_0

    .line 2388
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2390
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1276
    sget-object v1, Lorg/apache/commons/lang3/c;->c:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/lang3/c;->d:Ljava/lang/String;

    .line 2406
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 2409
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lorg/apache/commons/lang3/JavaVersion;)Z
    .locals 1

    .prologue
    .line 1371
    sget-object v0, Lorg/apache/commons/lang3/c;->b:Lorg/apache/commons/lang3/JavaVersion;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/JavaVersion;->atLeast(Lorg/apache/commons/lang3/JavaVersion;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1286
    sget-object v0, Lorg/apache/commons/lang3/c;->c:Ljava/lang/String;

    .line 2423
    if-nez v0, :cond_0

    .line 2424
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2426
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1304
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1309
    :goto_0
    return-object v0

    .line 1307
    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught a SecurityException reading the system property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1309
    const/4 v0, 0x0

    goto :goto_0
.end method
