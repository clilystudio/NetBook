.class public Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private serverError:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServerError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;->serverError:Ljava/lang/String;

    return-object v0
.end method

.method public isServerError()Z
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;->serverError:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setServerError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;->serverError:Ljava/lang/String;

    .line 26
    return-void
.end method
