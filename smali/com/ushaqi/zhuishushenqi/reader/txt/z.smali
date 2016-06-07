.class final Lcom/ushaqi/zhuishushenqi/reader/txt/z;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/y;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/y;)V
    .locals 0

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/z;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1361
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 2364
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/z;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/y;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/txt/y;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 2365
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/z;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/y;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/txt/y;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 2367
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/z;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/y;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/txt/y;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->L(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 1361
    return-void
.end method
