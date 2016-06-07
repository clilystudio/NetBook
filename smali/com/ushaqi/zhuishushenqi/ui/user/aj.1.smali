.class final Lcom/ushaqi/zhuishushenqi/ui/user/aj;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/VipPlan;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aj;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;B)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/aj;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/VipPlan;
    .locals 1

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->m()Lcom/ushaqi/zhuishushenqi/model/VipPlan;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aj;->a()Lcom/ushaqi/zhuishushenqi/model/VipPlan;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 94
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/VipPlan;

    .line 1108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/VipPlan;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aj;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->f()V

    .line 1110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aj;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/user/al;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/VipPlan;->getPlans()[Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/al;->a(Ljava/util/List;)V

    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aj;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->h()V

    goto :goto_0
.end method
