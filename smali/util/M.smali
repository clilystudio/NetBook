.class final Lcom/ushaqi/zhuishushenqi/util/M;
.super Lcom/ushaqi/zhuishushenqi/util/S;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/S",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/Root;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/J;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/J;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/M;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/S;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/ushaqi/zhuishushenqi/api/ApiService;[Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->M(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/M;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/J;->b(I)V

    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/M;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Lcom/ushaqi/zhuishushenqi/util/J;)Landroid/content/Context;

    move-result-object v0

    .line 1231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1232
    invoke-static {v0, v2, v3}, Landroid/support/design/widget/am;->b(Landroid/content/Context;J)V

    .line 106
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->getByToken(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/AccountInfo;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->setPrevUnimpNotif(I)V

    .line 111
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->save()Ljava/lang/Long;

    .line 114
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/w;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/w;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 115
    return-void
.end method
