.class final Lcom/ushaqi/zhuishushenqi/adapter/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/y;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/r;->b:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/r;->a:Ljava/lang/String;

    .line 360
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/r;->a:Ljava/lang/String;

    .line 1114
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/event/d;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/ushaqi/zhuishushenqi/event/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/r;->b:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/r;->a:Ljava/lang/String;

    .line 2110
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/dl/a;

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;-><init>(Landroid/app/Activity;)V

    .line 3043
    invoke-virtual {v2, v1, v3, v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a(Ljava/lang/String;II)V

    .line 370
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/r;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    .line 376
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->setStatus(I)V

    .line 377
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->save()Ljava/lang/Long;

    .line 378
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/I;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/I;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 380
    :cond_0
    return-void
.end method
