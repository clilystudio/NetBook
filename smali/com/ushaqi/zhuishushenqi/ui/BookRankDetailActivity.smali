.class public Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;->e(I)V

    .line 22
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aL;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/aL;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "book_list_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aL;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
.end method
