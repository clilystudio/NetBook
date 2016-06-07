.class final Lcom/ushaqi/zhuishushenqi/reader/txt/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/cd;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/L;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/L;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 393
    if-eqz v3, :cond_0

    .line 394
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->c()V

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/L;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->q(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 398
    return-void
.end method
