.class final Lcom/ushaqi/zhuishushenqi/reader/txt/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/cw;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/j;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/j;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I

    .line 838
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 842
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/j;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 845
    :cond_0
    if-eqz p1, :cond_1

    .line 850
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/j;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    goto :goto_0
.end method
