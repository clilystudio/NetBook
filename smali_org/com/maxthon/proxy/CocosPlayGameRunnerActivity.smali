.class public Lcom/maxthon/proxy/CocosPlayGameRunnerActivity;
.super Lcom/maxthon/proxy/ProxyActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/maxthon/proxy/ProxyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12
    const-string v1, "com.maxthon.mge.CocosPlayGameRunnerActivity"

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/maxthon/proxy/CocosPlayGameRunnerActivity;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.maxthon.global.MgeConstant"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 15
    const-string v2, "TARGET_COCOSPLAYGAMERUNNERACTIVITY"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 18
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
