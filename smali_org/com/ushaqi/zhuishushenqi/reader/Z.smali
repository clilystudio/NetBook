.class abstract Lcom/ushaqi/zhuishushenqi/reader/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/Reader;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;I)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->a:I

    .line 614
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)V
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 618
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v3

    .line 621
    array-length v0, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->a:I

    array-length v2, v3

    if-lt v0, v2, :cond_0

    .line 622
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->a:I

    .line 624
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->a:I

    aget-object v4, v3, v0

    .line 627
    if-nez v4, :cond_3

    .line 629
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;-><init>()V

    move-object v2, v0

    move v0, v1

    .line 635
    :goto_0
    if-eqz v0, :cond_5

    .line 636
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o(Lcom/ushaqi/zhuishushenqi/reader/Reader;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o(Lcom/ushaqi/zhuishushenqi/reader/Reader;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 637
    :cond_1
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setStatus(I)V

    .line 690
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a:Ljava/util/Map;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/Z;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)V

    .line 693
    return-void

    .line 631
    :cond_3
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getUnreadble()Z

    move-result v0

    .line 632
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->a:I

    invoke-static {v2, v4, v5}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v2

    goto :goto_0

    .line 639
    :cond_4
    const/4 v0, -0x3

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setStatus(I)V

    goto :goto_1

    .line 644
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->f(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->a:I

    invoke-static {v0, v3, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 650
    :catch_0
    move-exception v0

    .line 685
    :cond_6
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setStatus(I)V

    goto :goto_1

    .line 654
    :cond_7
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->a:I

    invoke-static {v0, v4, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->b(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 655
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 656
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v3

    .line 657
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getBody()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 658
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setBody(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setCpContent(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setId(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->isVip()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setIsVip(Z)V

    .line 663
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 664
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setLink(Ljava/lang/String;)V

    .line 668
    :cond_8
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->p(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 669
    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->isVip()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->isVip()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    :goto_2
    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setIsVip(Z)V

    .line 671
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getCurrency()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setCurrency(I)V

    .line 674
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setKey(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->q(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Z;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->h(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Chapter;)Z

    goto/16 :goto_1

    .line 670
    :cond_a
    const/4 v1, 0x0

    goto :goto_2

    .line 682
    :cond_b
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getStatus()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setStatus(I)V

    goto/16 :goto_1
.end method
