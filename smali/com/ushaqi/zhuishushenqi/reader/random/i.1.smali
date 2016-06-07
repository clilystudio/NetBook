.class final Lcom/ushaqi/zhuishushenqi/reader/random/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/cw;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/i;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/i;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;I)I

    .line 440
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/i;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->o(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 447
    :cond_0
    if-eqz p1, :cond_1

    .line 452
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/i;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->p(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    goto :goto_0
.end method
