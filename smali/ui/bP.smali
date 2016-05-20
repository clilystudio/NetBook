.class final Lcom/ushaqi/zhuishushenqi/ui/bP;
.super Lcom/ushaqi/zhuishushenqi/ui/bR;
.source "SourceFile"


# instance fields
.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 1

    .prologue
    .line 509
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bP;->b:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/bR;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;B)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bP;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

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
    .line 519
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bR;->a(Ljava/util/List;)V

    .line 520
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 509
    check-cast p1, Ljava/util/List;

    .line 1519
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bR;->a(Ljava/util/List;)V

    .line 509
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 513
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/bR;->onPreExecute()V

    .line 514
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bP;->b:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bP;->b:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 515
    return-void
.end method
