.class public abstract Lcom/ushaqi/zhuishushenqi/a/c;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Input:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<TInput;",
        "Ljava/lang/Void;",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->d:Z

    .line 26
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->e:Z

    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/a/c;->b:Landroid/app/Activity;

    .line 30
    const v0, 0x7f05006a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->c:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->d:Z

    .line 26
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->e:Z

    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/a/c;->b:Landroid/app/Activity;

    .line 35
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 45
    iput-boolean p3, p0, Lcom/ushaqi/zhuishushenqi/a/c;->e:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->d:Z

    .line 26
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->e:Z

    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/a/c;->b:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/a/c;->c:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TInput;)TE;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public final b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TInput;)TE;"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/c;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 1127
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCancelled()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/e;->onCancelled()V

    .line 1131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->b:Landroid/app/Activity;

    const-string v1, "\u5df2\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/a/c;->a:Landroid/app/ProgressDialog;

    .line 100
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/c;->a(Ljava/lang/Object;)V

    .line 101
    return-void

    .line 97
    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/a/c;->a:Landroid/app/ProgressDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/a/c;->a:Landroid/app/ProgressDialog;

    throw v0
.end method

.method public onPreExecute()V
    .locals 6

    .prologue
    .line 53
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/a/c;->c:Ljava/lang/String;

    .line 54
    new-instance v5, Lcom/ushaqi/zhuishushenqi/a/d;

    invoke-direct {v5, p0}, Lcom/ushaqi/zhuishushenqi/a/d;-><init>(Lcom/ushaqi/zhuishushenqi/a/c;)V

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->e:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/ushaqi/zhuishushenqi/a/c;->d:Z

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->a:Landroid/app/ProgressDialog;

    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/c;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/e;->onPreExecute()V

    .line 65
    return-void
.end method
