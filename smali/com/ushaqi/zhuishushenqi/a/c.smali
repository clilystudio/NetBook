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
    v0 = 0x1;
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->d = v0;
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->e = v0;
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->b = p1;
    v0 = 0x7f05006a;
    v0 = p1.getString(v0);
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->c = v0;
    return;
.end method
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .prologue
    v0 = 0x1;
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->d = v0;
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->e = v0;
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->b = p1;
    v0 = p1.getString(p2);
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->c = v0;
    return;
.end method
.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 0
    .prologue
    p0.<init>(p1, p2);
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->e = p3;
    return;
.end method
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = 0x1;
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->d = v0;
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->e = v0;
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->b = p1;
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->c = p2;
    return;
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
    v0 = p0.Lcom/ushaqi/zhuishushenqi/a/c;->b;
    return v0;
.end method
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TInput;)TE;"
        }
    .end annotation
    .prologue
    v0 = 0x0;
    :try_start_0
    p0.a(p1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public onCancelled()V
    .locals 3
    .prologue
    Lcom/ushaqi/zhuishushenqi/a/e.onCancelled(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/a/c;->b;
    v1 = "\u5df2\u53d6\u6d88";
    v2 = 0x0;
    v0 = Landroid/widget/Toast.makeText(v0, v1, v2);
    v0.show();
    return;
.end method
.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
    .prologue
    v1 = 0x0;
    Lcom/ushaqi/zhuishushenqi/a/e.onPostExecute(p0, p1);
    :try_start_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/a/c;->a;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/a/c;->a;
    v0.dismiss();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :cond_0
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->a = v1;
    :goto_0
    p0.a(p1);
    return;
    :catch_0
    move-exception v0
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->a = v1;
    goto :goto_0
    :catchall_0
    move-exception v0
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->a = v1;
    throw v0
.end method
.method public onPreExecute()V
    .locals 6
    .prologue
    v2 = p0.Lcom/ushaqi/zhuishushenqi/a/c;->c;
    v5 = new d();
    v5.<init>(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/a/c;->b;
    v0 = v0.isFinishing();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/a/c;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/a/c;->b;
    v1 = 0x0;
    v3 = 0x1;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/a/c;->d;
    v0 = Landroid/app/ProgressDialog.show(v0 .. v5);
    p0.Lcom/ushaqi/zhuishushenqi/a/c;->a = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/a/c;->a;
    v1 = 0x0;
    v0.setCanceledOnTouchOutside(v1);
    :cond_0
    Lcom/ushaqi/zhuishushenqi/a/e.onPreExecute(p0);
    return;
.end method
