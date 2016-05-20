.class final Lcom/ushaqi/zhuishushenqi/reader/txt/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/q;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->finish()V

    .line 1078
    return-void
.end method
