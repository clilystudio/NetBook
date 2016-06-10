.class public Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/reader/txt/R;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/txt/T;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookFile;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field mEmpty:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c013d
    .end annotation
.end field

.field mList:Landroid/widget/ListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c003c
    .end annotation
.end field

.field mPbLoading:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c00dd
    .end annotation
.end field

.field mStatus:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c013c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->b:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->e:Ljava/util/List;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->f:Z

    .line 290
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Lcom/ushaqi/zhuishushenqi/reader/txt/R;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/R;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;I)V
    .locals 3

    .prologue
    .line 39
    .line 2148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u626b\u63cf\u5230"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2atxt\u6587\u4ef6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method private a(Ljava/io/File;Ljava/util/Stack;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Stack",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 107
    if-eqz v4, :cond_0

    .line 110
    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 111
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {p2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_2
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1152
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1153
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    if-ne v0, v8, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1154
    const-string v7, ".txt"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, ".TXT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x12c

    cmp-long v0, v8, v10

    if-lez v0, :cond_7

    move v0, v2

    .line 1155
    :goto_2
    if-eqz v0, :cond_b

    .line 1160
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2112
    if-nez v0, :cond_8

    move v0, v2

    .line 1160
    :goto_3
    if-nez v0, :cond_b

    move v0, v2

    .line 118
    :goto_4
    if-eqz v0, :cond_2

    .line 2139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 2140
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 118
    :goto_5
    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->b:Ljava/util/List;

    new-instance v7, Lcom/ushaqi/zhuishushenqi/reader/txt/T;

    invoke-direct {v7, p0, v6, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Ljava/io/File;B)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->b:Ljava/util/List;

    new-instance v6, Lcom/ushaqi/zhuishushenqi/reader/txt/O;

    invoke-direct {v6, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/O;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/P;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/P;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 1154
    goto :goto_2

    .line 2115
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 2116
    const-string v8, "log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "debug"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "jason"

    .line 2117
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "sig"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2125
    const-string v7, "^.*[0-9]+(-|/| )?[0-9]+(-|/| )?[0-9]+.*$"

    .line 2126
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 2127
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2128
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 2118
    if-eqz v0, :cond_a

    :cond_9
    move v0, v2

    .line 2119
    goto :goto_3

    :cond_a
    move v0, v1

    .line 2121
    goto :goto_3

    :cond_b
    move v0, v1

    .line 1160
    goto :goto_4

    :cond_c
    move v0, v1

    .line 2144
    goto :goto_5
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;I)I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->c:I

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->f:Z

    return v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->c:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 98
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a(Ljava/io/File;Ljava/util/Stack;)V

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 66
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/R;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/R;

    .line 67
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/R;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/R;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    const-string v0, "\u672c\u5730\u4e66\u7c4d"

    const-string v1, "\u5168\u9009"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/txt/N;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/N;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 76
    return-void
.end method

.method public onImport(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/R;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->b(Lcom/ushaqi/zhuishushenqi/reader/txt/R;)Ljava/util/List;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const-string v0, "\u8bf7\u5148\u9009\u62e9\u5bfc\u5165\u7684\u4e66\u7c4d"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 170
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->setUpdated(Ljava/util/Date;)V

    goto :goto_1

    .line 172
    :cond_1
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->saveTxtFiles(Ljava/util/List;)V

    .line 173
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/A;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/A;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onResume()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->b:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/Q;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onStop()V

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->c:I

    .line 89
    return-void
.end method
