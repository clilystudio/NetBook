.class final Lcom/ushaqi/zhuishushenqi/reader/txt/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/s;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/s;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0, p2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)V

    .line 1142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/s;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->K(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->dismiss()V

    .line 1143
    return-void
.end method
