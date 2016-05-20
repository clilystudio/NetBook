.class final Lcom/ushaqi/zhuishushenqi/ui/home/m;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/m;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;B)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/m;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;
    .locals 1

    .prologue
    .line 80
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a()Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/m;->a()Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 75
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;

    .line 1089
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1090
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;->isServerError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/m;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;->getServerError()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method
