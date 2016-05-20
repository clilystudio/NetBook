.class public Lcom/ushaqi/zhuishushenqi/model/SplashRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private splash:[Lcom/ushaqi/zhuishushenqi/model/Splash;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSplash()[Lcom/ushaqi/zhuishushenqi/model/Splash;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/SplashRoot;->splash:[Lcom/ushaqi/zhuishushenqi/model/Splash;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/SplashRoot;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/SplashRoot;->ok:Z

    .line 20
    return-void
.end method

.method public setSplash([Lcom/ushaqi/zhuishushenqi/model/Splash;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/SplashRoot;->splash:[Lcom/ushaqi/zhuishushenqi/model/Splash;

    .line 28
    return-void
.end method
