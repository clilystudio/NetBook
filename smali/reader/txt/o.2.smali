.class final Lcom/ushaqi/zhuishushenqi/reader/txt/o;
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
    .line 1064
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/o;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1067
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1068
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/o;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->finish()V

    .line 1069
    return-void
.end method
