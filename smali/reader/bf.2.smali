.class final Lcom/ushaqi/zhuishushenqi/reader/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/cc;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bf;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 578
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bf;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 579
    if-eqz v3, :cond_0

    .line 580
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->a()V

    .line 578
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bf;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 584
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bf;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g()V

    .line 585
    return-void
.end method
