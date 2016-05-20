.class final Lcom/ushaqi/zhuishushenqi/reader/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/k;->b:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 117
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/k;->b:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/k;->a:Ljava/lang/String;

    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ushaqi/zhuishushenqi/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->E(Ljava/lang/String;)Z

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/k;->b:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)V

    .line 120
    return-void
.end method
