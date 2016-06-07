.class final Lcom/ushaqi/zhuishushenqi/reader/txt/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/P;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/P;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Lcom/ushaqi/zhuishushenqi/reader/txt/R;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/P;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a(Ljava/util/Collection;)V

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/P;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/P;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;I)V

    .line 131
    return-void
.end method
