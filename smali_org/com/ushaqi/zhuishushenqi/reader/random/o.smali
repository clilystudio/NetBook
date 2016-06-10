.class final Lcom/ushaqi/zhuishushenqi/reader/random/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/o;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/o;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/o;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const-string v1, "random_reader_change_book"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/o;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const-string v1, "random_reader_book_chapter_count"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/random/o;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/o;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;I)I

    .line 235
    return-void
.end method
