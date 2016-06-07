.class final Lcom/ushaqi/zhuishushenqi/reader/txt/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ushaqi/zhuishushenqi/reader/e",
        "<",
        "Lcom/ushaqi/zhuishushenqi/reader/n;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/A;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/A;)V
    .locals 0

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/B;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1379
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 2382
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/B;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/A;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/txt/A;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 2383
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/B;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/A;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/txt/A;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 2385
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/B;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/A;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/txt/A;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->L(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 1379
    return-void
.end method
