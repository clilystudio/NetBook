.class final Lcom/ushaqi/zhuishushenqi/reader/txt/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/db;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/a;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/a;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/a;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderOptionActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    return-void
.end method
