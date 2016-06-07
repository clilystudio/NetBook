.class final Lcom/ushaqi/zhuishushenqi/util/K;
.super Lcom/ushaqi/zhuishushenqi/util/S;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/S",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/J;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/J;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/K;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/S;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/ushaqi/zhuishushenqi/api/ApiService;[Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 1

    .prologue
    .line 137
    .line 2141
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->G(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method protected final synthetic b(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .locals 6

    .prologue
    .line 137
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;

    .line 1146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/K;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->getImportant()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Lcom/ushaqi/zhuishushenqi/util/J;I)I

    .line 1147
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/K;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->getUnimportant()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/J;->b(Lcom/ushaqi/zhuishushenqi/util/J;I)I

    .line 1148
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->getLastReadImportantTime()Ljava/util/Date;

    move-result-object v0

    .line 1149
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->getLastReadUnimportantTime()Ljava/util/Date;

    move-result-object v1

    .line 1150
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/K;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Lcom/ushaqi/zhuishushenqi/util/J;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/design/widget/am;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1151
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/K;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Lcom/ushaqi/zhuishushenqi/util/J;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/support/design/widget/am;->a(Landroid/content/Context;J)V

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/K;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Lcom/ushaqi/zhuishushenqi/util/J;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/K;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Lcom/ushaqi/zhuishushenqi/util/J;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/design/widget/am;->b(Landroid/content/Context;J)V

    .line 1157
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/w;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/w;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 137
    return-void
.end method
