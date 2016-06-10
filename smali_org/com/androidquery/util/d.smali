.class public final Lcom/androidquery/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/app/Activity;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    instance-of v0, p1, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 28
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 29
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/androidquery/util/d;->c:Landroid/app/Activity;

    goto :goto_0

    .line 30
    :cond_3
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/androidquery/util/d;->d:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 40
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 44
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/d;->c:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/androidquery/util/d;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 51
    :cond_2
    iput-boolean v1, p0, Lcom/androidquery/util/d;->e:Z

    .line 52
    iput v1, p0, Lcom/androidquery/util/d;->g:I

    .line 53
    iput v2, p0, Lcom/androidquery/util/d;->f:I

    .line 55
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    if-gtz p1, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/util/d;->e:Z

    .line 61
    const/16 p1, 0x2710

    .line 64
    :cond_0
    iput p1, p0, Lcom/androidquery/util/d;->f:I

    .line 66
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 72
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 76
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/d;->c:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/androidquery/util/d;->c:Landroid/app/Activity;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 118
    :cond_2
    return-void
.end method

.method public final b(I)V
    .locals 4

    .prologue
    const/16 v2, 0x270f

    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 81
    iget-object v3, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/androidquery/util/d;->e:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    iget-boolean v3, p0, Lcom/androidquery/util/d;->e:Z

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/d;->c:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 90
    iget-boolean v0, p0, Lcom/androidquery/util/d;->e:Z

    if-eqz v0, :cond_6

    .line 91
    iget v0, p0, Lcom/androidquery/util/d;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/androidquery/util/d;->g:I

    .line 96
    :goto_2
    if-le v0, v2, :cond_2

    move v0, v2

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/androidquery/util/d;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setProgress(I)V

    .line 102
    :cond_3
    return-void

    :cond_4
    move v0, p1

    .line 81
    goto :goto_0

    :cond_5
    move v1, p1

    .line 85
    goto :goto_1

    .line 93
    :cond_6
    iget v0, p0, Lcom/androidquery/util/d;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/androidquery/util/d;->g:I

    .line 94
    iget v0, p0, Lcom/androidquery/util/d;->g:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/androidquery/util/d;->f:I

    div-int/2addr v0, v1

    goto :goto_2
.end method

.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x40ff0001

    const/4 v2, 0x0

    .line 122
    .line 1164
    iget-object v0, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1165
    new-instance v0, Lcom/androidquery/a;

    iget-object v1, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/a;-><init>(Landroid/content/Context;)V

    .line 1166
    iget-object v1, p0, Lcom/androidquery/util/d;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/a;->b(Landroid/app/Dialog;)Lcom/androidquery/b;

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/d;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/androidquery/util/d;->c:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1171
    iget-object v0, p0, Lcom/androidquery/util/d;->c:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 1175
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ProgressBar;->setTag(ILjava/lang/Object;)V

    .line 1176
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1179
    :cond_2
    iget-object v0, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    .line 1180
    if-nez v0, :cond_3

    .line 1181
    iget-object v0, p0, Lcom/androidquery/util/d;->d:Landroid/view/View;

    .line 1184
    :cond_3
    if-eqz v0, :cond_5

    .line 1186
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1187
    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1188
    :cond_4
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1190
    iget-object v1, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/androidquery/util/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1191
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_5
    return-void
.end method
