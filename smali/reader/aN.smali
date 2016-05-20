.class final Lcom/ushaqi/zhuishushenqi/reader/aN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/F;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aN;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aN;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aN;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aN;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i()V

    .line 1611
    :goto_0
    return-void

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aN;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto :goto_0
.end method
