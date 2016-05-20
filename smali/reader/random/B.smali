.class final Lcom/ushaqi/zhuishushenqi/reader/random/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/B;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 896
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 897
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/B;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 898
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/B;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const-string v1, "random_reader_quit_choice"

    const-string v2, "add_shelf"

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/B;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const-string v1, "random_reader_book_chapter_count"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/random/B;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 900
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/B;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->finish()V

    .line 901
    return-void
.end method
