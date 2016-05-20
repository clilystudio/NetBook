.class public final Lcom/ushaqi/zhuishushenqi/reader/txt/Q;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 290
    .line 2300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;I)I

    .line 2301
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->getTxtFiles()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Ljava/util/List;)Ljava/util/List;

    .line 2302
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->b()V

    .line 2303
    const/4 v0, 0x0

    .line 290
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 290
    check-cast p1, Ljava/lang/Void;

    .line 1308
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1309
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mPbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1310
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1312
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;I)V

    .line 1315
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/A;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/A;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/e;->onPreExecute()V

    .line 295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mPbLoading:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    return-void
.end method
