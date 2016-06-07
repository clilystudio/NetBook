.class public Lcom/maxthon/dex/DexUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PLUGIN_MAIN:Ljava/lang/String; = "plugin_main"

.field private static PLUGIN_PATH:Ljava/lang/String; = null

.field private static final PLUGIN_PATHNAME:Ljava/lang/String; = "plugins"

.field private static mInstance:Lcom/maxthon/dex/DexUtils;


# instance fields
.field private mClassLoader:Ldalvik/system/DexClassLoader;

.field private mContext:Landroid/content/Context;

.field private mJverion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private getDexInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/maxthon/dex/DexUtils;->PLUGIN_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "plugins"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/maxthon/dex/DexUtils;->PLUGIN_PATH:Ljava/lang/String;

    .line 111
    :cond_1
    sget-object v0, Lcom/maxthon/dex/DexUtils;->PLUGIN_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/maxthon/dex/DexUtils;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/maxthon/dex/DexUtils;->mInstance:Lcom/maxthon/dex/DexUtils;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/maxthon/dex/DexUtils;

    invoke-direct {v0}, Lcom/maxthon/dex/DexUtils;-><init>()V

    sput-object v0, Lcom/maxthon/dex/DexUtils;->mInstance:Lcom/maxthon/dex/DexUtils;

    .line 42
    :cond_0
    sget-object v0, Lcom/maxthon/dex/DexUtils;->mInstance:Lcom/maxthon/dex/DexUtils;

    return-object v0
.end method

.method private writeDefaultToCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 234
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jar/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/maxthon/dex/DexUtils;->getJversion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lcom/maxthon/dex/DexUtils;->getJversion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/maxthon/dex/DexUtils;->getJarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 236
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 237
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 239
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_0

    .line 242
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 244
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 248
    :goto_1
    return-void

    .line 240
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getDexClassLoader(Ljava/io/File;)Ldalvik/system/DexClassLoader;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/maxthon/dex/DexUtils;->mClassLoader:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_2

    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/maxthon/dex/DexUtils;->mContext:Landroid/content/Context;

    const-string v1, "plugin_main"

    invoke-direct {p0, v0, v1}, Lcom/maxthon/dex/DexUtils;->writeDefaultToCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/maxthon/dex/DexUtils;->unZipJar(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/maxthon/dex/DexUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/maxthon/dex/DexUtils;->replaceActivityThreadClassloader(Landroid/content/Context;Ljava/io/File;)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/maxthon/dex/DexUtils;->mClassLoader:Ldalvik/system/DexClassLoader;

    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/maxthon/dex/DexUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/maxthon/dex/DexUtils;->getPluginInDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getJversion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/maxthon/dex/DexUtils;->mJverion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/maxthon/dex/DexUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maxthon/main/MgeProperties;->getMgeSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/maxthon/main/MgeProperties;->KEY_SDK_JVERSION:Ljava/lang/String;

    const-string v2, "1.0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/dex/DexUtils;->mJverion:Ljava/lang/String;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/maxthon/dex/DexUtils;->mJverion:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/maxthon/dex/DexUtils;->getDexInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_dir/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_0
    return-object v1
.end method

.method public getPluginDexDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/maxthon/dex/DexUtils;->getDexInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_dex/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_0
    return-object v1
.end method

.method public getPluginInDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/maxthon/dex/DexUtils;->getDexInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_in/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_0
    return-object v1
.end method

.method public getPluginLibDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/maxthon/dex/DexUtils;->getPluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method public getPluginOutDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/maxthon/dex/DexUtils;->getDexInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_out/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 135
    :cond_0
    return-object v1
.end method

.method public getPorxyActivityDexPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    .line 174
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/maxthon/dex/DexUtils;->getPluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/activities/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 178
    :cond_0
    const-string v0, ".dex"

    .line 179
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 180
    const-string v0, ".jar"

    .line 182
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    return-object v2
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/maxthon/dex/DexUtils;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public replaceActivityThreadClassloader(Landroid/content/Context;Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 73
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/String;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    const-string v1, "currentActivityThread"

    invoke-virtual {v0, v1}, Lcom/maxthon/utils/MReflect;->call(Ljava/lang/String;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    const-string v1, "getPackageInfoNoCheck"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/maxthon/dex/DexUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/maxthon/utils/MReflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    move-object v1, v0

    .line 77
    :goto_0
    const-string v0, "mClassLoader"

    invoke-virtual {v1, v0}, Lcom/maxthon/utils/MReflect;->field(Ljava/lang/String;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maxthon/utils/MReflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 78
    new-instance v2, Ldalvik/system/DexClassLoader;

    .line 79
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/maxthon/dex/DexUtils;->mContext:Landroid/content/Context;

    const-string v6, "plugin_main"

    invoke-virtual {v4, v5, v6}, Lcom/maxthon/dex/DexUtils;->getPluginDexDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 78
    iput-object v2, p0, Lcom/maxthon/dex/DexUtils;->mClassLoader:Ldalvik/system/DexClassLoader;

    .line 82
    const-string v0, "mClassLoader"

    iget-object v2, p0, Lcom/maxthon/dex/DexUtils;->mClassLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v1, v0, v2}, Lcom/maxthon/utils/MReflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;

    .line 86
    return-void

    .line 75
    :cond_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/String;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    const-string v1, "currentActivityThread"

    invoke-virtual {v0, v1}, Lcom/maxthon/utils/MReflect;->call(Ljava/lang/String;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    const-string v1, "peekPackageInfo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/maxthon/dex/DexUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/maxthon/utils/MReflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public setClassLoader(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/maxthon/dex/DexUtils;->replaceActivityThreadClassloader(Landroid/content/Context;Ljava/io/File;)V

    .line 68
    return-void
.end method

.method public setJversion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/maxthon/dex/DexUtils;->mJverion:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public unZipJar(Ljava/io/File;)V
    .locals 9

    .prologue
    .line 190
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 194
    new-instance v1, Ljava/util/jar/JarInputStream;

    invoke-direct {v1, v0}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 195
    const/4 v0, 0x0

    .line 196
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->closeEntry()V

    .line 223
    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->close()V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_6

    .line 199
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    const-string v4, "test_unzip"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "path : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/maxthon/dex/DexUtils;->mContext:Landroid/content/Context;

    const-string v8, "plugin_main"

    invoke-virtual {v6, v7, v8}, Lcom/maxthon/dex/DexUtils;->getPluginOutDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 203
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v2, "test_unzip"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "path : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 206
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 207
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 213
    :cond_3
    :goto_2
    invoke-static {v1, v4}, Lcom/maxthon/utils/FileUtil;->writeToFile(Ljava/io/InputStream;Ljava/io/File;)V

    goto/16 :goto_1

    .line 209
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 215
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_1

    .line 219
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_1
.end method
