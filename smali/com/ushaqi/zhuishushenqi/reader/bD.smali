.class final Lcom/ushaqi/zhuishushenqi/reader/bD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bD;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/bD;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bD;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bD;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bD;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->c(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bD;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->c(Ljava/lang/String;I)V

    .line 229
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/v;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/v;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bD;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bD;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bD;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->finish()V

    .line 233
    return-void
.end method
