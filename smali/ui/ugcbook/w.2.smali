.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/w;
.super Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;
.source "SourceFile"


# instance fields
.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V
    .locals 1

    .prologue
    .line 336
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/w;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;B)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/w;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a(Ljava/util/List;)V

    .line 347
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 336
    check-cast p1, Ljava/util/List;

    .line 1346
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a(Ljava/util/List;)V

    .line 336
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->onPreExecute()V

    .line 341
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/w;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/w;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    return-void
.end method
