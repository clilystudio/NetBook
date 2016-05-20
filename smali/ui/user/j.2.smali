.class final Lcom/ushaqi/zhuishushenqi/ui/user/j;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/GameRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/j;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;B)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/j;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)V

    return-void
.end method

.method private static varargs a()Lcom/ushaqi/zhuishushenqi/model/GameRoot;
    .locals 1

    .prologue
    .line 189
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->p()Lcom/ushaqi/zhuishushenqi/model/GameRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/user/j;->a()Lcom/ushaqi/zhuishushenqi/model/GameRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 184
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GameRoot;

    .line 1198
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1199
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameRoot;->getGames()[Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v0

    .line 1201
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/j;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)Lcom/ushaqi/zhuishushenqi/adapter/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/x;->a([Ljava/lang/Object;)V

    .line 1202
    array-length v0, v0

    if-lez v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/j;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->f()V

    .line 1207
    :goto_0
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/j;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->g()V

    goto :goto_0

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/j;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->h()V

    goto :goto_0
.end method
