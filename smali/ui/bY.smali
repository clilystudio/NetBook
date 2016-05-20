.class final Lcom/ushaqi/zhuishushenqi/ui/bY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;

.field private synthetic b:I

.field private synthetic c:[I

.field private synthetic d:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Landroid/app/AlertDialog;I[I)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bY;->d:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/bY;->a:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/ui/bY;->b:I

    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/ui/bY;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bY;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bY;->d:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bY;->b:I

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bY;->d:Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/bY;->c:[I

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/ui/bY;->b:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;ILjava/lang/String;)V

    .line 178
    return-void
.end method
