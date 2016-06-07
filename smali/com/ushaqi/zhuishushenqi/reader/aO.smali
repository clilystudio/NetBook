.class final Lcom/ushaqi/zhuishushenqi/reader/aO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 1652
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aO;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aO;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0, p2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)V

    .line 1657
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aO;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->dismiss()V

    .line 1658
    return-void
.end method
