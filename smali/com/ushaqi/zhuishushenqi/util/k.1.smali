.class public final Lcom/ushaqi/zhuishushenqi/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/k;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/k;Z)V
    .locals 2

    .prologue
    .line 17
    .line 3096
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/k;->c:Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    if-eqz v0, :cond_0

    .line 3097
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/k;->c:Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->setSendStatus(Z)V

    .line 3098
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/k;->c:Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->save()Ljava/lang/Long;

    :goto_0
    return-void

    .line 3102
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/k;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/k;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/t;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/k;->b:Ljava/lang/String;

    .line 32
    invoke-static {}, Landroid/support/design/widget/am;->h()Ljava/lang/String;

    move-result-object v2

    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/k;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->getBookClickRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    .line 37
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/k;->b:Ljava/lang/String;

    .line 1067
    invoke-static {v4, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;I)I

    move-result v4

    .line 38
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->today_time:Ljava/lang/String;

    .line 2067
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    .line 39
    if-le v4, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/k;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->deleteByBookId(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/k;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/k;->b:Ljava/lang/String;

    .line 3055
    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->getBookClickRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3057
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 3058
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/k;->c:Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    .line 3059
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/k;->c:Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->isSendStatus()Z

    move-result v0

    .line 46
    :goto_1
    if-nez v0, :cond_2

    .line 47
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/l;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/util/l;-><init>(Lcom/ushaqi/zhuishushenqi/util/k;B)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/k;->b:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/k;->a:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/util/l;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 3061
    goto :goto_1
.end method
